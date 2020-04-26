
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
      'Adventist Health Glendale Emergency Dept',
      '1509 Wilson Terrace
Glendale, CA 91206',
      'Glendale',
      'CA',
      'Enter ED waiting room; Attn: Donovan Stewart',
      'No',
      '34.1502139',
      '-118.2304591'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Glendale Emergency Dept'
        AND o.latitude = '34.1502139'
        AND o.longitude = '-118.2304591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Glendale Emergency Dept'
        AND o.latitude = '34.1502139'
        AND o.longitude = '-118.2304591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Glendale Emergency Dept'
        AND o.latitude = '34.1502139'
        AND o.longitude = '-118.2304591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Glendale Emergency Dept'
        AND o.latitude = '34.1502139'
        AND o.longitude = '-118.2304591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Glendale Emergency Dept'
        AND o.latitude = '34.1502139'
        AND o.longitude = '-118.2304591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Glendale Emergency Dept'
        AND o.latitude = '34.1502139'
        AND o.longitude = '-118.2304591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Glendale Emergency Dept'
        AND o.latitude = '34.1502139'
        AND o.longitude = '-118.2304591'));

COMMIT;
