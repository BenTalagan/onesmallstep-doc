<style>
  body {margin:35px;font-size:20px; text-align:justify; max-width: 1000px; margin-left: auto; margin-right:auto; padding:40px; }
  img {max-width:100%;}
  h1 {font-size:40px;margin-top:50px;}
  h2 {font-size:35px;margin-top:45px;}
  h3 {font-size:25px;margin-top:35px;color:darkblue;}
  h4 {font-size:20px;margin-top:30px;color:grey;margin-bottom:0px;}
  table { margin: auto; font-size:20px; border-spacing: 0; border-collapse: collapse; }
  td, th { text-align: center; border:1px solid black ; padding: 2px 5px; }
  tr th:first-child { border: none; background-color:white; }
  tr td:first-child { text-align: left; border; background-color: lightgray; }
  th { padding-left:10px; padding-right:10px;  background-color: lightgray;}
  td.empty { border: none; background-color:white !important; height:20px }

</style>

One Small Step
{:style="text-align: center; font-size:40px; font-weight:bold"}

Alternative step input tool for Reaper
{:style="text-align: center;color:grey; font-size:20px"}

![](./0.9.7/OSS.png)
{:style="text-align: center"}

[Support forum thread](https://forum.cockos.com/showthread.php?t=288076) · [Source Repository](https://github.com/ReaTeam/ReaScripts) · [Reapack](https://reapack.com)
{:style="text-align: center"}

# Documentation index

<script>
  let documented_versions = ["0.9.10", "0.9.9", "0.9.8", "0.9.7", "0.9.6"]

  document.write("<ul>");
  for(let i = 0; i < documented_versions.length ; i++) {
    let v = documented_versions[i]
    document.write('<li>Documentation for <a href="v' + v + '.html">v' + v + '</a></li>')
  }
  document.write("</ul>")

  let sp          = new URLSearchParams(document.location.search)
  let ver         = sp.get('ver')

  if(documented_versions.includes(ver)) {
    let root = document.location.href.substring(0, document.location.href.lastIndexOf("/"));
    document.location = root + "/v" + ver + ".html";
  }
</script>
