
<p class="text-center  hidden-md hidden-lg" >
<%= image_tag "bandeaufbparis.jpg" , size: "360x100" %>
</p>

<p class="text-center  hidden-xs hidden-sm" >
<%= image_tag "bandeaufbparis.jpg" %>
</p>

<br>
<br>
<br>

<h1 class= "text-center">Bienvenue sur Neesyu </h1>
<div class="alert alert-danger" role="alert">
    <h2>
        <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
        <span class="sr-only text-center"></span>
        Site en test
    </h2>
</div>
<div class="container">
    <row>
        <div class="col-md-8 col-md-offset-2" >
                            <br>
              <br>

              <p class="text-center">
              L'agenda parisien pour danser et s'épanouir.
              Vous trouverez ici toutes les activités sur Paris des danses de 5 Rythmes, Movement Medecine et Openfloor ... pour commencer.
              <br>
              Ceci site est en cours de construction, seuls les infos sur les dates des cours sont garanties fiables ... le reste est en alpha-test.
                <br><br>
              Belle journée et que la magie de danse nous arrose de sa joie d'être.
              </p>
        </div>
    </row>
</div>


<p class="text-center">
<%= link_to "Liste des événements", events_path, class: "btn btn-primary" %>
</p>
