import React from 'react';
import ReactDOM from 'react-dom/client';


import '@/styles/globals.css';

import mudConfig from 'contracts/mud.config';

import { map } from '@/lib/config/KeyboardControls';
import { MUDProvider } from '@/lib/config/MUDContext';
import { setup } from '@/lib/mud/setup';

import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import { BrowserRouter, Route, Routes } from "react-router-dom";
import App from "./App";
import "./index.css";

const queryClient = new QueryClient();

setup().then(async (result) => {
  ReactDOM.createRoot(document.getElementById('root') as HTMLElement).render(
    <React.StrictMode>
      <MUDProvider value={result}>
      <BrowserRouter>
			<Routes>
				<Route path="/*" element={
					<QueryClientProvider client={queryClient}>
            <App />
					</QueryClientProvider>
				} />
			</Routes>
		</BrowserRouter>
      </MUDProvider>
    </React.StrictMode>,
  );

  // https://vitejs.dev/guide/env-and-mode.html
  if (import.meta.env.DEV) {
    const { mount: mountDevTools } = await import('@latticexyz/dev-tools');
    mountDevTools({
      config: mudConfig,
      publicClient: result.network.publicClient,
      walletClient: result.network.walletClient,
      latestBlock$: result.network.latestBlock$,
      storedBlockLogs$: result.network.storedBlockLogs$,
      worldAddress: result.network.worldContract.address,
      worldAbi: result.network.worldContract.abi,
      write$: result.network.write$,
      recsWorld: result.network.world,
    });
  }
});
