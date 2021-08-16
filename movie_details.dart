new Expanded(
  child: new ListView.builder(
      itemCount: movies == null ? 0 : movies.length,
      itemBuilder: (context, i) {
        return  new FlatButton(

          child: new MovieCell(movies,i),
          padding: const EdgeInsets.all(0.0),
          onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context){
              return new MovieDetail(movies[i]);
            }));
          },
          color: Colors.white,
        );

      }),
)