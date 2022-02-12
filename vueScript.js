var app9 = new Vue({
    el: '#app',
    data () {
        return {
            adress: 'http://localhost/htdocs/bier/api',
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
        }
        
    },
    created () { 
        axios
            //.get('https://15euros.nl/api/api_bier.php')
            .get(this.adress+'/api.php?action=getBeer')
            .then( response => {
                this.biertjes = response.data.data;
                // console.log(this.biertjes);
            })
            .catch(error => {
                // console.log(error);
            })
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
        // updLike: function(bier) {
        //     console.log(bier);
        //     bier.likes = parseInt(bier.likes) + 1;
        //     $.ajax({
        //         method: "POST",
        //         url: "api/api.php?action=increaseLike",
        //         data: bier
        //     })
        //     .then(function (response) {
        //         console.log(response);
        //     })
        //     .catch(function (error) {
        //         console.log(error);
        //     });
        // },
        updLike: function(bier) {
            console.log(bier);
            $.ajax({
                method: "POST",
                url: "api/api.php?action=increaseLike",
                data: bier
            })
            .then(function (response) {
                console.log(response);
            })
            .catch(function (error) {
                console.log(error);
            });
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