/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


const bar=document.getElementById('bar');
const nav=document.getElementById('navbar');
const close=document.getElementById('close');

if(bar){
    bar.addEventListener('click', () =>{
nav.classList.add('active');
    })
}

if(close){
    close.addEventListener('click', () =>{
        nav.classList.remove('active');
    })
}