
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
      'NYU Langone Brooklyn',
      '150 55th St
Brooklyn, NY 11220',
      'New York - Brooklyn',
      'NY',
      'Att. EMS department ',
      'No',
      '40.6466634',
      '-74.0209235'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Brooklyn'
        AND o.latitude = '40.6466634'
        AND o.longitude = '-74.0209235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Brooklyn'
        AND o.latitude = '40.6466634'
        AND o.longitude = '-74.0209235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Brooklyn'
        AND o.latitude = '40.6466634'
        AND o.longitude = '-74.0209235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Brooklyn'
        AND o.latitude = '40.6466634'
        AND o.longitude = '-74.0209235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Brooklyn'
        AND o.latitude = '40.6466634'
        AND o.longitude = '-74.0209235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Brooklyn'
        AND o.latitude = '40.6466634'
        AND o.longitude = '-74.0209235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Brooklyn'
        AND o.latitude = '40.6466634'
        AND o.longitude = '-74.0209235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Brooklyn'
        AND o.latitude = '40.6466634'
        AND o.longitude = '-74.0209235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Brooklyn'
        AND o.latitude = '40.6466634'
        AND o.longitude = '-74.0209235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Brooklyn'
        AND o.latitude = '40.6466634'
        AND o.longitude = '-74.0209235'));

COMMIT;
