
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
      'Einstein Medical Center Montgomery',
      '559 W Germantown Pike
East Norriton, PA 19403',
      'East Norriton',
      'PA',
      'Call 484-622-7013 to coordinate donation

|

Emergency Department Entrance',
      'No',
      '40.1529948',
      '-75.344529'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Medical Center Montgomery'
        AND o.latitude = '40.1529948'
        AND o.longitude = '-75.344529'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Medical Center Montgomery'
        AND o.latitude = '40.1529948'
        AND o.longitude = '-75.344529'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Medical Center Montgomery'
        AND o.latitude = '40.1529948'
        AND o.longitude = '-75.344529'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Medical Center Montgomery'
        AND o.latitude = '40.1529948'
        AND o.longitude = '-75.344529'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Medical Center Montgomery'
        AND o.latitude = '40.1529948'
        AND o.longitude = '-75.344529'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Medical Center Montgomery'
        AND o.latitude = '40.1529948'
        AND o.longitude = '-75.344529'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Medical Center Montgomery'
        AND o.latitude = '40.1529948'
        AND o.longitude = '-75.344529'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Medical Center Montgomery'
        AND o.latitude = '40.1529948'
        AND o.longitude = '-75.344529'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Medical Center Montgomery'
        AND o.latitude = '40.1529948'
        AND o.longitude = '-75.344529'));

COMMIT;
