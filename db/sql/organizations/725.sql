
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
      'SageWest Health Care',
      '1320 Bishop Randall Dr
Lander, WY 82520',
      'Lander',
      'WY',
      'Maybe try contacting this number: (307) 332-4420. Thank you so much!',
      'Yes',
      '42.8205069',
      '-108.7267758'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'SageWest Health Care'
        AND o.latitude = '42.8205069'
        AND o.longitude = '-108.7267758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'SageWest Health Care'
        AND o.latitude = '42.8205069'
        AND o.longitude = '-108.7267758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'SageWest Health Care'
        AND o.latitude = '42.8205069'
        AND o.longitude = '-108.7267758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'SageWest Health Care'
        AND o.latitude = '42.8205069'
        AND o.longitude = '-108.7267758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'SageWest Health Care'
        AND o.latitude = '42.8205069'
        AND o.longitude = '-108.7267758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'SageWest Health Care'
        AND o.latitude = '42.8205069'
        AND o.longitude = '-108.7267758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'SageWest Health Care'
        AND o.latitude = '42.8205069'
        AND o.longitude = '-108.7267758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'SageWest Health Care'
        AND o.latitude = '42.8205069'
        AND o.longitude = '-108.7267758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'SageWest Health Care'
        AND o.latitude = '42.8205069'
        AND o.longitude = '-108.7267758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'SageWest Health Care'
        AND o.latitude = '42.8205069'
        AND o.longitude = '-108.7267758'));

COMMIT;
