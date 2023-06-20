<%-- 
    Document   : leaderboard
    Created on : Jun 20, 2023, 6:17:31 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
        <style>@import url('https://fonts.googleapis.com/css?family=Amatic+SC');

            @import url('https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300&display=swap');

            .list::-webkit-scrollbar-track
            {
                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
                background-color: #F5F5F5;
            }

            .list::-webkit-scrollbar
            {
                width: 6px;
                background-color: #F5F5F5;
            }

            .list::-webkit-scrollbar-thumb
            {
                background-color: #646464;
            }

            body {
                background-color: #b394c9;
                font-family: 'Amatic SC';
            }

            #root {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .container {
                width: 445px;
                height: 600px;
                background-color: black;
                margin: auto;
                font-family: 'Amatic SC';
                margin: auto;
                padding: 1rem;
                border-radius: 5px;
                box-shadow: 7px 9px 7px #00000052;

                .leader {
                    display: flex;
                }

                .crown {
                    position: absolute;
                    left: 50%;
                    transform: translateX(-50%);

                    svg {
                        width: 3rem;
                    }
                }

                .image {
                    height: 58px;
                    object-fit: cover;
                    width: 58px;
                    background-color: black;
                    border-radius: 50%;
                }

                .topLeadersList {
                    display: flex;
                    position: relative;
                    min-height: 120px;
                    padding-top: 3rem;

                    .image {
                        border-radius: 50%;
                        border: 3px solid #b159ffcc;
                    }

                    .leader:nth-child(1) {
                        color: black;
                        position: absolute;
                        left: 50%;
                        transform: translateX(-50%);

                        &:after {
                            content: '1';
                            width: 30px;
                            height: 30px;
                            background: #ffc500;
                            border-radius: 50%;
                            position: absolute;
                            right: 0;
                            font-family: sans-serif;
                            text-align: center;
                            line-height: 30px;
                            font-weight: 700;
                            box-shadow: 1px 1px 4px black;
                        }

                        .image {
                            width: 130px;
                            height: 130px;
                        }

                        .crown {
                            top: -20%;

                            svg {
                                fill: #ffc500;
                            }
                        }

                    }

                    .leader:nth-child(2) {
                        color: black;
                        position: absolute;
                        left: 15%;
                        transform: translateX(-15%);
                        bottom: -20%;

                        &:after {
                            content: '2';
                            width: 30px;
                            height: 30px;
                            background: #d4d4d4;
                            border-radius: 50%;
                            position: absolute;
                            right: 0;
                            font-family: sans-serif;
                            text-align: center;
                            line-height: 30px;
                            font-weight: 700;
                            box-shadow: 1px 1px 4px black;
                        }

                        .image {
                            width: 110px;
                            height: 110px;
                        }

                        .crown {
                            top: -25%;

                            svg {
                                fill: #d4d4d4;
                            }
                        }
                    }

                    .leader:nth-child(3) {
                        color: black;
                        position: absolute;
                        left: 85%;
                        transform: translateX(-85%);
                        bottom: -20%;

                        &:after {
                            content: '3';
                            width: 30px;
                            height: 30px;
                            background: #ab6528;
                            border-radius: 50%;
                            position: absolute;
                            right: 0;
                            font-family: sans-serif;
                            text-align: center;
                            line-height: 30px;
                            font-weight: 700;
                            box-shadow: 1px 1px 4px black;
                        }

                        .image {
                            width: 110px;
                            height: 110px;
                        }

                        .crown {
                            top: -25%;

                            svg {
                                fill: #ab6528;
                            }
                        }
                    }
                }

                .leaderName {
                    position: absolute;
                    text-align: center;
                    color: white;
                    left: 50%;
                    transform: translateX(-50%);
                    font-size: 22px;
                }

                .player {
                    background-color: #330b7775;
                    display: grid;
                    grid-template-columns: 0.4fr 3fr 1fr 1fr 1fr 1fr 1fr 1fr;

                    align-items: center;
                    min-height: 42px;
                    text-align: center;
                    padding-right: 0.4rem;

                    .image {
                        width: 28px;
                        height: 28px;
                        border: 1.5px solid white;
                    }
                }

                .table {
                    margin-right: 0.1rem;
                    display: grid;
                    font-size: 14px;
                    grid-template-columns: 0.4fr 3fr 1fr 1fr 1fr 1fr 1fr 1fr;
                    text-align: center;

                    div:nth-child(2) {
                        text-align: left;
                        margin-left: 5px;
                    }

                    .image {
                        width: 20px;
                        height: 20px;
                    }
                }

                .playerslist {
                    margin-top: 6rem;
                    font-size: 16px;
                    overflow: hidden;
                    color: white;
                    font-family: 'Roboto Condensed', sans-serif;

                    .player:nth-child(odd) {
                        background-color: #b159ffcc;
                        align-items: center;
                    }
                }

                .user {
                    display: flex;
                    align-items: center;
                    gap: 4px;
                }

                .list {
                    overflow: scroll;
                    height: 20rem;
                    overflow-x: hidden;
                }
            }</style>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1>Hello World!</h1>
        <div id="root"></div>
        
        <script  type="text/babel">import React, { useRef } from "https://cdn.skypack.dev/react@17.0.1";
import ReactDOM from "https://cdn.skypack.dev/react-dom@17.0.1";

const App = () => {
 const dados = [
  {
    id: 1,
    name: 'Laura',
    image: 'https://cdn-icons-png.flaticon.com/512/186/186037.png',
    level: 16,
    xp: 100,
    coins: 500,
    love: 6,
    beacons: 2,
    resources: 70,
  },
  {
    id: 1,
    name: 'Laura',
    image: 'https://cdn-icons-png.flaticon.com/512/186/186037.png',
    level: 16,
    xp: 100,
    coins: 500,
    love: 6,
    beacons: 2,
    resources: 70,
  },
  {
    id: 1,
    name: 'Laura',
    image: 'https://cdn-icons-png.flaticon.com/512/186/186037.png',
    level: 16,
    xp: 100,
    coins: 500,
    love: 6,
    beacons: 2,
    resources: 70,
  },
  {
    id: 1,
    name: 'Laura',
    image: 'https://cdn-icons-png.flaticon.com/512/186/186037.png',
    level: 16,
    xp: 100,
    coins: 500,
    love: 6,
    beacons: 2,
    resources: 70,
  },
  {
    id: 1,
    name: 'Laura',
    image: 'https://cdn-icons-png.flaticon.com/512/186/186037.png',
    level: 16,
    xp: 100,
    coins: 500,
    love: 6,
    beacons: 2,
    resources: 70,
  },
  {
    id: 1,
    name: 'Laura',
    image: 'https://cdn-icons-png.flaticon.com/512/186/186037.png',
    level: 16,
    xp: 100,
    coins: 500,
    love: 6,
    beacons: 2,
    resources: 70,
  },
  {
    id: 1,
    name: 'Laura',
    image: 'https://cdn-icons-png.flaticon.com/512/186/186037.png',
    level: 16,
    xp: 100,
    coins: 500,
    love: 6,
    beacons: 2,
    resources: 70,
  },
  {
    id: 1,
    name: 'Laura',
    image: 'https://cdn-icons-png.flaticon.com/512/186/186037.png',
    level: 16,
    xp: 100,
    coins: 500,
    love: 6,
    beacons: 2,
    resources: 70,
  },
  {
    id: 1,
    name: 'Laura',
    image: 'https://cdn-icons-png.flaticon.com/512/186/186037.png',
    level: 16,
    xp: 100,
    coins: 500,
    love: 6,
    beacons: 2,
    resources: 70,
  },
  {
    id: 1,
    name: 'Laura',
    image: 'https://cdn-icons-png.flaticon.com/512/186/186037.png',
    level: 16,
    xp: 100,
    coins: 500,
    love: 6,
    beacons: 2,
    resources: 70,
  },
  {
    id: 1,
    name: 'Laura',
    image: 'https://cdn-icons-png.flaticon.com/512/186/186037.png',
    level: 16,
    xp: 100,
    coins: 500,
    love: 6,
    beacons: 2,
    resources: 70,
  },
  {
    id: 1,
    name: 'Laura',
    image: 'https://cdn-icons-png.flaticon.com/512/186/186037.png',
    level: 16,
    xp: 100,
    coins: 500,
    love: 6,
    beacons: 2,
    resources: 70,
  },
  {
    id: 1,
    name: 'Laura',
    image: 'https://cdn-icons-png.flaticon.com/512/186/186037.png',
    level: 16,
    xp: 100,
    coins: 500,
    love: 6,
    beacons: 2,
    resources: 70,
  },
  {
    id: 1,
    name: 'Laura',
    image: 'https://cdn-icons-png.flaticon.com/512/186/186037.png',
    level: 16,
    xp: 100,
    coins: 500,
    love: 6,
    beacons: 2,
    resources: 70,
  },
  {
    id: 1,
    name: 'Laura',
    image: 'https://cdn-icons-png.flaticon.com/512/186/186037.png',
    level: 16,
    xp: 100,
    coins: 500,
    love: 6,
    beacons: 2,
    resources: 70,
  },
  {
    id: 1,
    name: 'Laura',
    image: 'https://cdn-icons-png.flaticon.com/512/186/186037.png',
    level: 16,
    xp: 100,
    coins: 500,
    love: 6,
    beacons: 2,
    resources: 70,
  },
  {
    id: 1,
    name: 'Laura',
    image: 'https://cdn-icons-png.flaticon.com/512/186/186037.png',
    level: 16,
    xp: 100,
    coins: 500,
    love: 6,
    beacons: 2,
    resources: 70,
  },
  {
    id: 1,
    name: 'Laura',
    image: 'https://cdn-icons-png.flaticon.com/512/186/186037.png',
    level: 16,
    xp: 100,
    coins: 500,
    love: 6,
    beacons: 2,
    resources: 70,
  },
];
  return (
    <div className="container">
      <div className="topLeadersList">
        {dados.map((leader, index) => (
          <div className="leader" key={leader.id}>
            {index + 1 <= 3 && (
              <div className="containerImage">
                <img className="image" loading="lazy" src={leader.image} />
                <div className="crown">
                  <svg
                    id="crown1"
                    fill="#0f74b5"
                    data-name="Layer 1"
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 100 50"
                  >
                    <polygon
                      className="cls-1"
                      points="12.7 50 87.5 50 100 0 75 25 50 0 25.6 25 0 0 12.7 50"
                    />
                  </svg>
                </div>
                <div className="leaderName">{leader.name}</div>
              </div>
            )}
          </div>
        ))}
      </div>

      <div className="playerslist">
        <div className="table">
            <div>#</div>
        
            <div>Name</div>
        
          
            <div>LVL</div>
          
            <div>XP</div>
          
            <div>
              Coins
            </div>
          
            <div>
              Likes
            </div>
          
            <div>
              Pass
            </div>
          
            <div>
              Resources
            </div>
          
        </div>
        <div className="list">
          {dados.map((leader, index) => (
            <div className="player" key={leader.id}>
              <span> {index + 1}</span>
              <div className="user">
                <img className="image" src={leader.image} />
                <span> {leader.name} </span>
              </div>
              <span> {leader.level} </span>
              <span> {leader.xp} </span>
              <span> {leader.coins} </span>
              <span> {leader.love} </span>
              <span> {leader.beacons} </span>
              <span> {leader.resources} </span>
            </div>
          ))}
        </div>
        </div>
      </div>
);
}

ReactDOM.render(<App />,
document.getElementById("root"))</script>
    </body>
</html>
