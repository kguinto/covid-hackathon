
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
      'City of Hope Cancer Center',
      '1500 E Duarte Rd
Duarte, CA 91010',
      'Duarte',
      'CA',
      '',
      'Yes',
      '34.1308315',
      '-117.9722589'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'City of Hope Cancer Center'
        AND o.latitude = '34.1308315'
        AND o.longitude = '-117.9722589'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'City of Hope Cancer Center'
        AND o.latitude = '34.1308315'
        AND o.longitude = '-117.9722589'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'City of Hope Cancer Center'
        AND o.latitude = '34.1308315'
        AND o.longitude = '-117.9722589'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'City of Hope Cancer Center'
        AND o.latitude = '34.1308315'
        AND o.longitude = '-117.9722589'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'City of Hope Cancer Center'
        AND o.latitude = '34.1308315'
        AND o.longitude = '-117.9722589'));

COMMIT;
