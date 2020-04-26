
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
      'Berkshire Medical Center',
      '725 North St
Pittsfield, MA 01201',
      'Pittsfield',
      'MA',
      'Curbside

OR

Delivery to ER

OR 

Resident''s Room

OR

To internal medicine department ',
      'Yes',
      '42.459638',
      '-73.2492284'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Berkshire Medical Center'
        AND o.latitude = '42.459638'
        AND o.longitude = '-73.2492284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Berkshire Medical Center'
        AND o.latitude = '42.459638'
        AND o.longitude = '-73.2492284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Berkshire Medical Center'
        AND o.latitude = '42.459638'
        AND o.longitude = '-73.2492284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Berkshire Medical Center'
        AND o.latitude = '42.459638'
        AND o.longitude = '-73.2492284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Berkshire Medical Center'
        AND o.latitude = '42.459638'
        AND o.longitude = '-73.2492284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Berkshire Medical Center'
        AND o.latitude = '42.459638'
        AND o.longitude = '-73.2492284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Berkshire Medical Center'
        AND o.latitude = '42.459638'
        AND o.longitude = '-73.2492284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Berkshire Medical Center'
        AND o.latitude = '42.459638'
        AND o.longitude = '-73.2492284'));

COMMIT;
