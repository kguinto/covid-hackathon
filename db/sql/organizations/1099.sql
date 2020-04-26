
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Puget Sound Home Health',
      '4002 Tacoma Mall Blvd #204
Tacoma, WA 98409',
      'Tacoma',
      'WA',
      'Drop off with receptionist',
      'Yes',
      '47.2203874',
      '-122.4671903'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Puget Sound Home Health'
        AND o.latitude = '47.2203874'
        AND o.longitude = '-122.4671903'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Puget Sound Home Health'
        AND o.latitude = '47.2203874'
        AND o.longitude = '-122.4671903'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Puget Sound Home Health'
        AND o.latitude = '47.2203874'
        AND o.longitude = '-122.4671903'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Puget Sound Home Health'
        AND o.latitude = '47.2203874'
        AND o.longitude = '-122.4671903'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Puget Sound Home Health'
        AND o.latitude = '47.2203874'
        AND o.longitude = '-122.4671903'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Puget Sound Home Health'
        AND o.latitude = '47.2203874'
        AND o.longitude = '-122.4671903'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Puget Sound Home Health'
        AND o.latitude = '47.2203874'
        AND o.longitude = '-122.4671903'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Puget Sound Home Health'
        AND o.latitude = '47.2203874'
        AND o.longitude = '-122.4671903'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Puget Sound Home Health'
        AND o.latitude = '47.2203874'
        AND o.longitude = '-122.4671903'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Puget Sound Home Health'
        AND o.latitude = '47.2203874'
        AND o.longitude = '-122.4671903'));

COMMIT;
