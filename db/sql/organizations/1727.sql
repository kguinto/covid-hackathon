
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
      'St Johns Regional Medical Center',
      '1600 N Rose Ave
Oxnard, CA 93030',
      'oxnard',
      'CA',
      'Drop off ER entrance',
      'Yes',
      '34.216734',
      '-119.1558831'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Regional Medical Center'
        AND o.latitude = '34.216734'
        AND o.longitude = '-119.1558831'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Regional Medical Center'
        AND o.latitude = '34.216734'
        AND o.longitude = '-119.1558831'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Regional Medical Center'
        AND o.latitude = '34.216734'
        AND o.longitude = '-119.1558831'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Regional Medical Center'
        AND o.latitude = '34.216734'
        AND o.longitude = '-119.1558831'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Regional Medical Center'
        AND o.latitude = '34.216734'
        AND o.longitude = '-119.1558831'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Regional Medical Center'
        AND o.latitude = '34.216734'
        AND o.longitude = '-119.1558831'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Regional Medical Center'
        AND o.latitude = '34.216734'
        AND o.longitude = '-119.1558831'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Regional Medical Center'
        AND o.latitude = '34.216734'
        AND o.longitude = '-119.1558831'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Regional Medical Center'
        AND o.latitude = '34.216734'
        AND o.longitude = '-119.1558831'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Regional Medical Center'
        AND o.latitude = '34.216734'
        AND o.longitude = '-119.1558831'));

COMMIT;
