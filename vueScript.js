var app9 = new Vue({
    el: '#app',
    data () {
        return {
            adress: 'http://localhost:81/bier_project/api',
            logindata : {logged_in: false, user_id: null, username: null},
            biertjes: null, 
            fieldset: {
                id: {field:"id", bShow:true, title: "id"},
                naam: {field:"naam", bShow:true, title: "naam"},
                brouwer: {field:"brouwer", bShow:true, title: "brouwer"},
                type: {field:"type", bShow:true, title: "type"},
                gisting: {field:"gisting", bShow:true, title: "gisting"},
                perc: {field:"perc", bShow:true, title: "perc"},
                inkoopPrijs: {field:"inkoop_prijs", bShow:true, title: "inkoop prijs"},
                likes: {field: "likes", bShow:true, title: "likes"}
            },
            selBier: {},
            reviewData: {beer_id: null, rating: null, review: null },
            test: {one: false, two: false, three: false, four: false, five: false}
        }
        
    },
    created () { 
        axios
            //.get('https://15euros.nl/api/api_bier.php')
            .get(this.adress+'/api.php?action=getBeer')
            .then( response => {
                this.biertjes = response.data.data;

                let rating;
                this.biertjes.forEach(element => {
                    if (element.reviews) {
                        rating = 0;
                        element["reviewAmount"] = element.reviews.length;
    
                        element.reviews.forEach(element => {
                            rating = rating + parseInt(element.rating); 
                        });
                        
                        let rating2 = rating / element.reviews.length;

                        element["avgRating"] = Math.round(rating2);
                    }
                    else {
                        element["reviewAmount"] = null;
                        element["avgRating"] = null;
                    }
                    element["newReview"] = null;
                    element["newRating"] = null;
                    element["reviewed"] = false;
                });
                console.log(this.biertjes);
            })
            .catch(error => {
                // console.log(error);
            });

        axios
        .get(this.adress+'/api.php?action=loginData')
        .then( response => {
            this.logindata = response.data;
            console.log(response.data);
        })
        .catch(error => {
            // console.log(error);
        });


    },
    methods: {
        updBier: function(bier) {
            // console.log(bier);
            this.selBier = bier;
        },
        delBier: function(bier) {
            // console.log(bier);
            this.selBier = bier;
        },
        addBier: function() {
            this.selBier = { "id": "", "naam": "", "brouwer": "", "type": "", "gisting": "", "perc": "", "inkoop_prijs": "" }
        },
   
        updLike: function(bier) {
            console.log(bier);

            if (bier.liked === false) {

                bier.likes = parseInt(bier.likes) + 1;
                bier.liked = true;

                $.ajax({
                    method: "POST",
                    url: this.adress + "/api.php?action=increaseLike",
                    data: bier
                })
                .then(function (response) {
                    console.log(response);
                })
                .catch(function (error) {
                    console.log(error);
                });
            }
            else {
                bier.likes = parseInt(bier.likes) - 1;
                bier.liked = false;

                $.ajax({
                    method: "POST",
                    url: this.adress + "/api.php?action=deleteLike",
                    data: bier
                })
                .then(function (response) {
                    console.log(response);
                })
                .catch(function (error) {
                    console.log(error);
                });

            }
        },
        logout: function() {
            $.ajax({
                method: "POST",
                url: this.adress + "/api.php?action=logout"
            })
            .then(function (response) {
                console.log(response);
            })
            .catch(function (error) {
                console.log(error);
            });
            location.reload();
        },
        sendReview: function(bier) {
            console.log(bier);

            $.ajax({
                method: "POST",
                url: this.adress + "/api.php?action=sendReview",
                data: bier
            })
            .then(function (response) {
                if (bier.reviews) {
                    bier.reviews.push({beer_id: response.beer_id, id: response.id, rating: response.rating, review: response.review, user_id: response.user_id});
                }
                else {
                    bier.reviews = []
                    bier.reviews.push({beer_id: response.beer_id, id: response.id, rating: response.rating, review: response.review, user_id: response.user_id});
                }
                bier.reviewed = true;
                bier.reviewAmount++;
                let rating = 0;
                bier.reviews.forEach(element => {
                    rating = rating + parseInt(element.rating); 
                });
                let rating2 = rating / bier.reviewAmount;
                bier.avgRating = Math.round(rating2);
                console.log(bier);
            })
            .catch(function (error) {
                console.log(error);
            });
        },
        fRating: function(bier, rating) {
            bier.newRating = rating;
        },
    }
});


Vue.component('beer-form', {
    template: `
        <table>
            <div class="cross" onclick="edit()"><i class="fas fa-times"></i></div>
            <tr>
                <td class="editText">Naam</td>
                <td><input type="text" v-model="biertje.naam"></td>
            </tr>
            <tr>
                <td class="editText">Brouwer</td>
                <td><input type="text" v-model="biertje.brouwer"></td>
            </tr>
            <tr>
                <td class="editText">Type</td>
                <td><input type="text" v-model="biertje.type"></td>
            </tr>
            <tr>
                <td class="editText">Gisting</td>
                <td><input type="text" v-model="biertje.gisting"></td>
            </tr>            
            <tr>
                <td class="editText">Alc. perc</td>
                <td><input type="text" v-model="biertje.perc"></td>
            </tr>            
            <tr>
                <td class="editText">Prijs</td>
                <td><input type="text" v-model="biertje.inkoop_prijs"></td>
            </tr>   

            <tr>
                <td colspan="2"><input type="submit" value="Opslaan" v-on:click="saveBeer" onclick="edit()"></td>
                <input type="hidden" v-model="biertje.id">
            </tr>
        </table>
    ` ,
    props: ['biertje'],
    methods: {
        saveBeer: function() {
            // console.log(this.biertje);
            $.ajax({
                method: "POST",
                url: "api/api.php?action=updateBeer",
                data: this.biertje
            })
            .then(function (response) {
                // console.log(response);
            })
            .catch(function (error) {
                // console.log(error);
            });
        },
    }
});


Vue.component('beer-delete', {
    template: `
        <table>
            <tr colspan="2">
                <td>Weet u zeker dat u dit item wilt verwijderen?</td>
            </tr>
            <tr>
                <td><input type="submit" value="JA" v-on:click="deleteBeer"><input type="submit" value="NEE" onclick="del()"></td>
            </tr>
        </table>
    ` ,
    props: ["biertje"],
    methods: {
        deleteBeer: function() {
            // console.log(this.biertje);
            $.ajax({
                method: "POST",
                url: "api/api.php?action=deleteBeer",
                data: this.biertje
            })
            .then(function (response) {
                // console.log(response);
            })
            .catch(function (error) {
                // console.log(error);
            });
        }
    }
});

Vue.component('beer-add', {
    template: `
        <table>
            <div class="cross" onclick="add()"><i class="fas fa-times"></i></div>
            <tr>
                <td class="addText">Naam</td>
                <td><input type="text" v-model="biertje.naam"></td>
            </tr>
            <tr>
                <td class="addText">Brouwer</td>
                <td><input type="text" v-model="biertje.brouwer"></td>
            </tr>
            <tr>
                <td class="addText">Type</td>
                <td><input type="text" v-model="biertje.type"></td>
            </tr>
            <tr>
                <td class="addText">Gisting</td>
                <td><input type="text" v-model="biertje.gisting"></td>
            </tr>            
            <tr>
                <td class="addText">Alc. perc</td>
                <td><input type="text" v-model="biertje.perc"></td>
            </tr>            
            <tr>
                <td class="addText">Prijs</td>
                <td><input type="text" v-model="biertje.inkoop_prijs"></td>
            </tr>   

            <tr>
                <td colspan="2"><input type="submit" value="Opslaan" v-on:click="addBeer" onclick="add()"></td>
            </tr> 
        </table>
    ` ,
    props: ["biertje"],
    methods: {
        addBeer: function() {
            console.log(this.biertje);
            $.ajax({
                method: "POST",
                url: "api/api.php?action=addBeer",
                data: this.biertje
            })
            .then(function (response) {
                console.log(response);
            })
            .catch(function (error) {
                console.log(error);
            });
        }
    }
});


Vue.component('registration', {
    template: `
        <div>
            <table>
                <div class="regisCross" onclick="showRegistration()"><i class="fas fa-times"></i></div>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td><input type="text" placeholder="gebruikersnaam" v-model="data.gebruikersnaam"></td>
                </tr>
                <tr>
                    <td><input type="text" placeholder="wachtwoord" v-model="data.wachtwoord"></td>
                </tr>
                <tr>
                    <td><input type="text" placeholder="wachtwoord (herhaling)" v-model="data.wachtwoord2"></td>
                </tr>
                
                <tr>
                    <td><input type="submit" value="Registreren" v-on:click="addUser" onclick="showRegistration()"></td>
                </tr> 
            </table>
        </div>
        ` ,

    data: function() {
        return {
            data : {gebruikersnaam : null, wachtwoord : null, wachtwoord2 : null},
        }
    },
    methods: {
        addUser: function() {
            console.log(this.data);
            $.ajax({
                method: "POST",
                url: "http://localhost:81/bier_project/api/api.php?action=addUser",
                data: this.data
            })
            .then(function (response) {
                console.log(response);
            })
            .catch(function (error) {
                console.log(error);
            });
        }
    }
});

Vue.component('inlog', {
    template: `
        <div>
            <table>
                <div class="inlogCross" onclick="showInlog()"><i class="fas fa-times"></i></div>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td><input type="text" placeholder="gebruikersnaam" v-model="data.gebruikersnaam"></td>
                </tr>
                <tr>
                    <td><input type="text" placeholder="wachtwoord" v-model="data.wachtwoord"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Inloggen" v-on:click="login"></td>
                </tr> 
                <tr>
                    <td id="regisLink"><a href="#" onclick="showRegistration()">nog geen account? registreer je hier</a></td>
                </tr>
            </table>
        </div>
        ` ,
    data: function() {
        return {
            data : {login : true, gebruikersnaam : null, wachtwoord : null},
            test : {logged_in : false, user_id : null, username : null},
        }
    },
    methods: {
        login: function() {
            console.log(this.data);
            // $.ajax({
            //     method: "POST",
            //     url: "http://localhost:81/bier_project/login.php",
            //     data: this.data
            // })
            // .then(function (response) {
            //     this.test = response.data;
            //     console.log(response.data);
            // })
            // .catch(function (error) {
            //     console.log(error);
            // });

            axios
            .post("http://localhost:81/bier_project/api/api.php?action=login", this.data)
            .then( response => {
                this.logindata.logged_in = response.data.data.logged_in;
                this.logindata.user_id = response.data.data.user_id;
                this.logindata.username = response.data.data.username;

                console.log(response.data.data);
            })
            .catch(error => {
                // console.log(error);
            });
            location.reload();
        }
    }
});






























// var app = new Vue({
//     el: '#app',
//     data: {
//       message: 'Hello Vue!'
//     }
//   })

// var app2 = new Vue({
// el: '#app-2',
// data: {
//     message: 'You loaded this page on ' + new Date().toLocaleString()
//     }
// })

// var app3 = new Vue({
//     el: '#app-3',
//     data: {
//       seen: true
//     }
// })

// var app4 = new Vue({
//     el: '#app-4',
//     data: {
//       todos: [
//         { text: 'Learn JavaScript' },
//         { text: 'Learn Vue' },
//         { text: 'Build something awesome' }
//       ]
//     }
// })

// app4.todos.push({ text: 'New item' })

// var app5 = new Vue({
//     el: '#app-5',
//     data: {
//       message: 'Hello Vue.js!'
//     },
//     methods: {
//       reverseMessage: function () {
//         this.message = this.message.split('').reverse().join('')
//       }
//     }
//   })

//   var app6 = new Vue({
//     el: '#app-6',
//     data: {
//       message: 'Hello Vue!'
//     }
//   })