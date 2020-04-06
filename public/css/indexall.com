
/*Remove pre-generated styles and set globals*/
* {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Kanit', sans-serif;
}

/*Base Styles*/
    
    h1 {
	font-family: 'Taviraj', serif;
	font-size: 8vh;
    }
    
    h2 {
	font-family: 'Taviraj', serif;
	font-size: 4vh;
    }
    
    h3 {
	font-family: 'Taviraj', serif;
	font-size: 2vh;
    }
    
    h4 {
	font-family: 'Taviraj', serif;
	font-size: 1vh;
    }
    
    #index-cont {
	display: grid;
	grid-template-areas:  "hd hd hd hd hd hd hd"
				  "nv pt pt pt pt pt pt"
				  "nv pt pt pt pt pt pt"
				  "nv pt pt pt pt pt pt"
				  "nv pt pt pt pt pt pt"
				  "nv pt pt pt pt pt pt"
				  "ft ft ft ft ft ft ft"; 
	grid-template-rows: repeat(6,15vh) 10vh;
	grid-template-columns: 10vw repeat(6,15vw);
	justify-content: stretch;
	align-content: stretch;
	align-items: stretch;
	justify-items: stretch;
    }
    
    #index-title {
	grid-area: hd;
	background-color: black;
	color: #e2a66e;    
    }
    
    #index-menu {
	color: #e2a66e;
	background-color: #2c2c2c;
	display: grid;
	grid-template-areas: "hbtn"
				 "pbtn"
				 "abtn"
				 "sbtn";
	grid-template-rows: repeat(4,15vh);
	grid-template-columns: auto;
	grid-area: nv;
	align-self: stretch;
	align-content: stretch;
	justify-content: stretch;
	
    }
    
    
    .item {
	border: 0px solid black;
	color: #e2a66e;
	background-color: #2c2c2c;
	text-shadow: 2px 2px 2px #e2a66e;
    }
    
    #home {
	grid-area: hbtn;
    }
    
    #posts {
	grid-area: pbtn;
    }
    
    #about {
	grid-area: abtn;
    }
    
    #subscribe {
	grid-area: sbtn;
    }
    
    #sub-form {
	display: none;
	position: fixed;
	height: 60vh;
	width: 60vw;
	background-color: #2c2c2c;
	top: 20vh;
	left: 5vw;
	z-index: 2;
	padding: 2vw;
	opacity: 1;
    }

    #subscribe:hover+#sub-form, #sub-form:hover {
	display: block;
    }
    
    #sums {
    grid-area: pt;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: stretch;
}

.sum-txt {
    margin: 1vw;
}

#post-1 {
    grid-area: p1;   
}

#post-2 {
    grid-area: p2;
}

#post-3 {
    grid-area: p3;
}

#post-4 {
    grid-area: p4;
}

#post-5 {
    grid-area: p5;
}

#post-6 {
    grid-area: p6;
}

.card-item {
    font-size: 1em;
    margin: 1px;
}

#card-cont {
    position: fixed;
    width: 60vw;
    height: 20vh;
    left: 35vw;
    top: 75vh;
    border: 1px solid black;
    border-shadow: 1px 1px 3px #e2a66e; 
    background-color: #2c2c2c;
}

#card {
    display: grid;
    grid-template-areas: "pic nm nm nm nm"
			 "pic bio bio bio bio"
			 "pic fb gh wb em";
    grid-template-rows: 4vh min-content 4vh;
    grid-template-columns: minmax(15vw,100px) repeat(4, 1fr);
    justify-content: start;
    align-content: start;
    justify-items: start;
}

#crb-pic {
    grid-area: pic;
    width: auto;
    height: 18vh;
    align-self: stretch;
    justify-self: stretch;
}

#at-nm {
    color: #e2a66e;
    grid-area: nm;
    font-size: 2vh;
}

#at-bio {
    color: #e2a66e;
    grid-area: bio;
    font-size: 1.5vh;
}

#fb {
    grid-area: fb;
}

#gh {
    grid-area: gh;
}

#wb {
    grid-area: wb;
}


#em {
    grid-area: em;
}

#foot {
    grid-area: ft;
    background-color: #2c2c2c;
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    align-content: center;
    align-items: center;
}

.si {
    justify-self: center;
    align-self: center;
    font-size: 4.5vh;
}

a:link {
    text-decoration: none;
    color: #e2a66e;
    text-shadow: 2px 2px 2px black;
}
a:visited {
    text-decoration: none;
    color: #e2a66e;
    text-shadow: 2px 2px 2px black;
    
}

a:hover {
    text-decoration: none;
    color: black;
    text-shadow: 0px 0px 2px #e2a66e;
}

a:active {
    text-decoration: none;
    color: #2c2c2c;
    text-shadow: 0px 0px 2px black;
    border: .5px dashed black;
}

.odd {
    background-color: #7c43bd;
}

.even {
    background-color: #4a148c;
}

.icon {
    box-shadow: 2px 2px 2px black;
    border-radius: 50%;
}

.odd, .even {
    box-shadow: -2px 0px 2px  #b2ebf2 inset;
    transition: all .5s;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    align-items: center;
    align-content: space-between;
    opacity: .5;
    color: #b2ebf2;
}

.odd:hover, .even:hover {
    box-shadow: -6px 0px 4px #b2ebf2 inset;
    opacity: 1;
    transition: all .5s;
}

}

@media screen and only (max-width: 760) {

h1 {
    font-family: 'Taviraj', serif;
    font-size: 8vw;
}

h2 {
    font-family: 'Taviraj', serif;
    font-size: 4vw;
}

h3 {
    font-family: 'Taviraj', serif;
    font-size: 2vw;
}

h4 {
    font-family: 'Taviraj', serif;
    font-size: 1vw;
}

#index-cont {
    display: grid;
    grid-template-areas:  "hd hd nv"
			  "pt pt pt"
			  "ft ft ft"; 
    grid-template-rows: 8vh 84vh 8vh;
    grid-template-columns: 40vw 50vw 10vw;
    justify-content: stretch;
    align-content: stretch;
    align-items: stretch;
    justify-items: stretch;
}

.mobile {
    display: block;
}

#hamburg {
    grid-area: nv;
    z-index: 0;
}

#hamburg-menu {
    display: none;
}

#index-menu:hover+#hamburg {
    display: none;
}

#index-menu:hover+#hamburg-menu {
    display: block;
}

#hamburg-menu {
    z-index: 1
    display: flex;
    flex-direction: column;
    justify-content: stretch;
    align-content: stretch;
    top: 8vh;
    left: 80vw;
    position: fixed;
}

#index-title {
    grid-area: hd;
    background-color: black;
    color: #e2a66e;    
}

#index-menu {
    display: none;
    grid-area: nv;
    z-index: 1;
}

#index-menu:hover {
    display: grid;
    color: #e2a66e;
    visibility:
    background-color: #2c2c2c;
    grid-template-areas: "hbtn"
			 "pbtn"
			 "abtn"
			 "sbtn";
    grid-template-rows: repeat(4,15vh);
    grid-template-columns: auto;
    grid-area: nv;
    align-self: stretch;
    align-content: stretch;
    justify-content: stretch;

}


.item {
    border: 0px solid black;
    color: #e2a66e;
    background-color: #2c2c2c;
    text-shadow: 2px 2px 2px #e2a66e;
}

#home {
    grid-area: hbtn;
}

#posts {
    grid-area: pbtn;
}

#about {
    grid-area: abtn;
}

#subscribe {
    grid-area: sbtn;
}

#sub-form {
    display: none;
    position: fixed;
    height: 60vh;
    width: 60vw;
    background-color: #2c2c2c;
    top: 20vh;
    left: 5vw;
    z-index: 2;
    padding: 2vw;
    opacity: 1;
}

#subscribe:hover+#sub-form, #sub-form:hover {
    display: block;
}
}
