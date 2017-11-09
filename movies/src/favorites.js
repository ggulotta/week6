import React from 'react'

class Favorites extends React.Component {

  constructor(props) {
    super(props)
    this.state = { }
  }

  posterUrl = () => {
    if (this.props.movie) {
      return "http://image.tmdb.org/t/p/w300/" + this.props.movie.poster_path;
    }
    return "http://via.placeholder.com/300x450";
  }

  render() {
    return (
      <div className="col-sm-6 mb-3">
        {this.props.list.map( favorite => {
          return <img key={favorite} className="float-left thumbnail" src={favorite} />
        })}
      </div>
    )
  }
}

export default Favorites;
