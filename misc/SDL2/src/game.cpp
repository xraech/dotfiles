/*********************************************************************************************
 **  game.cpp
 **  src												
 **																							
 **  Created by Rafael Grossi on 05/26/19.				
 **  Copyright 2019. Rafael Grossi. All rights reserved.	
 *********************************************************************************************/


#include "SDL2/SDL.h"
#include "SDL2/SDL_image.h"
#include "string.h"
#include "stdio.h"


const int SCREEN_WIDTH  = 1920;
const int SCREEN_HEIGHT = 1080;

// game window
SDL_Window* gameWindow = NULL;
SDL_Surface* gameScreenSurface = NULL;
SDL_Surface* gamePngTest = NULL;

bool startSDL()
{
	bool success = false;
	if (SDL_Init(SDL_INIT_VIDEO) < 0) printf("shit happened\n%s\n", SDL_GetError());
	else
	{
		// create window
		gameWindow = SDL_CreateWindow("Game Tuto", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN);

		if (gameWindow == NULL) printf("no window\n%s\n", SDL_GetError());
		else
		{
			if (!(IMG_Init(IMG_INIT_PNG) & IMG_INIT_PNG)) printf("img error\n%s\n", IMG_GetError());
			else
			{
				success = true;
				// get window surface
				gameScreenSurface = SDL_GetWindowSurface(gameWindow);
			}
		}
	}
	return success;
}

SDL_Surface* loadSurface(char* path)
{
	SDL_Surface* optimizedSurface = NULL;

	SDL_Surface* loadedSurface = IMG_Load(path);
	if (loadedSurface == NULL) printf("fail to load img asset\n%s\n", IMG_GetError());
	else
	{
		optimizedSurface = SDL_ConvertSurface(loadedSurface, gameScreenSurface->format, NULL);
		if (optimizedSurface == NULL) printf("unable to optimize img\n%s\n", IMG_GetError());

		// get rid of old img
		SDL_FreeSurface(loadedSurface);
	}

	return optimizedSurface;
}

void closeSDL()
{
	// Destroy && Quit
	SDL_FreeSurface(gameScreenSurface);
	gameScreenSurface = NULL;
	SDL_FreeSurface(gamePngTest);
	gamePngTest = NULL;

	SDL_DestroyWindow(gameWindow);
	gameWindow = NULL;

	IMG_Quit();
	SDL_Quit();
}

int main()
{
	bool gameRunning = true;
	SDL_Event event;
	// start SDL
	startSDL();
	SDL_FillRect( gameScreenSurface, NULL, SDL_MapRGB( gameScreenSurface->format, 0x00, 0xFF, 0x00 ) );
	gamePngTest = loadSurface("./Assets/img1.png");

	
	while(gameRunning)
	{
		gameScreenSurface = SDL_GetWindowSurface(gameWindow);
		SDL_WaitEvent(&event);
		if (event.type == SDL_QUIT) gameRunning = false;


		SDL_BlitSurface(gamePngTest, NULL, gameScreenSurface, NULL);
		SDL_UpdateWindowSurface(gameWindow);
	}


	closeSDL();

	// return ;)
	return 0;
}
