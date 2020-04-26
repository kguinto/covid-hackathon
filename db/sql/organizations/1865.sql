
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
      'Genesis Medical ',
      '1227 E Rusholme St
Davenport, IA 52803',
      'Davenport',
      'IA',
      'Salvation Army is going to Serve as Collection Point for COVID-19 Outbreak Emergency Donations. Donations can be dropped off at the Salvation Army location at 100 Kirkwood Blvd., Davenport, on Monday through Friday from 8 a.m.-4:30 p.m. Anyone wishing to donate supplies is advised to call (563) 324-4808 first. Thank you!!
',
      'No',
      '41.5416972',
      '-90.5565222'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Genesis Medical '
        AND o.latitude = '41.5416972'
        AND o.longitude = '-90.5565222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Genesis Medical '
        AND o.latitude = '41.5416972'
        AND o.longitude = '-90.5565222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Genesis Medical '
        AND o.latitude = '41.5416972'
        AND o.longitude = '-90.5565222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Genesis Medical '
        AND o.latitude = '41.5416972'
        AND o.longitude = '-90.5565222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Genesis Medical '
        AND o.latitude = '41.5416972'
        AND o.longitude = '-90.5565222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Genesis Medical '
        AND o.latitude = '41.5416972'
        AND o.longitude = '-90.5565222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Genesis Medical '
        AND o.latitude = '41.5416972'
        AND o.longitude = '-90.5565222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Genesis Medical '
        AND o.latitude = '41.5416972'
        AND o.longitude = '-90.5565222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Genesis Medical '
        AND o.latitude = '41.5416972'
        AND o.longitude = '-90.5565222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Genesis Medical '
        AND o.latitude = '41.5416972'
        AND o.longitude = '-90.5565222'));

COMMIT;
