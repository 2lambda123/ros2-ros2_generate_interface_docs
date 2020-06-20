@{
import time
}@
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>@(package) Message / Service / Action Documentation</title>
    <link type="text/css" rel="stylesheet" href="../msg-styles.css" />
  </head>
  <body>
    <div id="container">
@[if msg_list]@
      <h1>@(package) Message Documentation</h1>
      <ul>
@[  for relative_path, msg in zip(msg_relative_paths, msg_list)]@
        <li><a href="../../html/@(relative_path)">@(msg)</a></li>
@[  end for]@
      </ul>
@[end if]@
@[if srv_list]@
      <h1>@(package) Service Documentation</h1>
      <ul>
@[  for relative_path, srv in zip(srv_relative_paths, srv_list)]@
        <li><a href="../../html/@(relative_path)">@(srv)</a></li>
@[  end for]@
      </ul>
@[end if]@
@[if action_list]@
      <h1>@(package) Action Documentation</h1>
      <ul>
@[  for relative_path, action in zip(action_relative_paths, action_list)]@
        <li><a href="../../html/@(relative_path)">@(action)</a></li>
@[  end for]@
      </ul>
@[end if]@
      <p class="footer">autogenerated on @(time.strftime("%b %d %Y %H:%M:%S", timestamp))</p>
    </div>
  </body>
</html>
