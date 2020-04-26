
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
      'Liberty Shores Assisted Living',
      '19360 Viking Ave NW
Poulsbo, WA 98370',
      'Poulsbo',
      'WA',
      '',
      'Yes',
      '47.7387404',
      '-122.6579616'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Liberty Shores Assisted Living'
        AND o.latitude = '47.7387404'
        AND o.longitude = '-122.6579616'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Liberty Shores Assisted Living'
        AND o.latitude = '47.7387404'
        AND o.longitude = '-122.6579616'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Liberty Shores Assisted Living'
        AND o.latitude = '47.7387404'
        AND o.longitude = '-122.6579616'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Liberty Shores Assisted Living'
        AND o.latitude = '47.7387404'
        AND o.longitude = '-122.6579616'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Liberty Shores Assisted Living'
        AND o.latitude = '47.7387404'
        AND o.longitude = '-122.6579616'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Liberty Shores Assisted Living'
        AND o.latitude = '47.7387404'
        AND o.longitude = '-122.6579616'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Liberty Shores Assisted Living'
        AND o.latitude = '47.7387404'
        AND o.longitude = '-122.6579616'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Liberty Shores Assisted Living'
        AND o.latitude = '47.7387404'
        AND o.longitude = '-122.6579616'));

COMMIT;
