import { functionType } from '../..'
import * as service from '../service/viewraces.service'
export const getByYear: functionType = async (req, res, next) => {
    try {
        const { year } = req.params
        const data = await service.getByYear(year)
        res.status(200).json({ success: true, message: 'Get data success!', data })
    } catch (err) {
        next(err)
    }
}
export const getAll: functionType = async (req, res, next) => {
    try {
        const data = await service.getAll()
        res.status(200).json({ success: true, message: 'Get data success!', data })
    } catch (err) {
        next(err)
    }
}

export const getYears: functionType = async (req, res, next) => {
    try {
        const data = await service.getYears()
        res.status(200).json({ success: true, message: 'Get data success!', data })
    } catch (err) {
        next(err)
    }
}
export const getByName: functionType = async (req, res, next) => {
    try {
        const { name } = req.params
        const data = await service.getByName(name)
        res.status(200).json({ success: true, message: 'Get data success!', data })
    } catch (err) {
        next(err)
    }
}