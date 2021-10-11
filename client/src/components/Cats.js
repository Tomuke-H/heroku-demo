import axios from "axios";
import React, { useEffect, useState } from "react";

const Cats = () => {
  const [cats, setCats] = useState([])

  useEffect(()=> {
    getCats()
  },[])

  const getCats = async () => {
    try{
      let res = await axios.get('api/cats')
      setCats(res.data)
    }catch(err){
      console.log(err)
    }
  }

  const renderCats = () => {
    return cats.map(c=> {
      return (
        <h1 key={c.id}>{c.name}</h1>
      )
    })
  }

  return (
    <div>
      {renderCats()}
    </div>
  )
}

export default Cats;