<template>
  <main id="app">
    <button @click="openProductSearch">Add Product</button>
    <ProductSearch
      v-show="isSearchOpen"
      @closeSearch="closeProductSearch"
      @selectProduct="subscribeTo"
    />
    <Watchlist :products="subscribedProducts" :isStale="false" />
  </main>
</template>

<script lang="ts">
import Vue from "vue";
import Watchlist from "@/components/Watchlist.vue";
import ProductSearch from "@/components/ProductSearch.vue";
import { Product } from "@/models/Product.model";

export default Vue.extend({
  name: "App",
  components: {
    Watchlist,
    ProductSearch,
  },
  data() {
    return {
      isSearchOpen: false,
      subscribedProducts: [
        {
          isin: "XYZ01234",
          displayName: "XYZ",
        },
      ],
    };
  },
  methods: {
    subscribeTo(product: Product): void {
      this.subscribedProducts.push(product);
    },
    openProductSearch(): void {
      this.isSearchOpen = true;
    },
    closeProductSearch(): void {
      this.isSearchOpen = false;
    },
  },
  computed: {
    uniqueProductIds(): Set<string> {
      return new Set(this.subscribedProducts.map(({ isin }) => isin));
    },
  },
});
</script>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
