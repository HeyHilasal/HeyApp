document.addEventListener("DOMContentLoaded", function(){
    if(!Notificacion){
        alert("Las notificaciones no se soportan en tu navegador, bajate uno mas nuevo.");
        return;
    }
    if(Notification.permission !== "granted")
    Notification.requestPermission();
});
function notificar(){
    if (Notification.permission !== "granted"){
        Notification.requestPermission();
    }else {
        var notificacion = new Notificacion("Titulo de mi Notificacion",
        {
            icon: ,
            body: "Este es el contenido de la notificacion!!!"
        });
        notificacion.onclick = function(){
            window.open();
        }
    }
}