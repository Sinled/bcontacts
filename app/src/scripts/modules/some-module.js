// import {double} from './another-module'

export const sqrt = Math.sqrt;

export function square(x) {
  return x * x *2;
}

export function diag(x, y) {
  return sqrt(square(x) + square(y));
}

