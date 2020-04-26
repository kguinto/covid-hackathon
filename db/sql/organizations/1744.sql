
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
      'Reeves Memorial Medical Center',
      '409 1st St
Bernice, LA 71222',
      'Bernice',
      'LA',
      '409 First Street',
      'Yes',
      '32.8240918',
      '-92.656449'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reeves Memorial Medical Center'
        AND o.latitude = '32.8240918'
        AND o.longitude = '-92.656449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reeves Memorial Medical Center'
        AND o.latitude = '32.8240918'
        AND o.longitude = '-92.656449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reeves Memorial Medical Center'
        AND o.latitude = '32.8240918'
        AND o.longitude = '-92.656449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reeves Memorial Medical Center'
        AND o.latitude = '32.8240918'
        AND o.longitude = '-92.656449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reeves Memorial Medical Center'
        AND o.latitude = '32.8240918'
        AND o.longitude = '-92.656449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reeves Memorial Medical Center'
        AND o.latitude = '32.8240918'
        AND o.longitude = '-92.656449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reeves Memorial Medical Center'
        AND o.latitude = '32.8240918'
        AND o.longitude = '-92.656449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reeves Memorial Medical Center'
        AND o.latitude = '32.8240918'
        AND o.longitude = '-92.656449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reeves Memorial Medical Center'
        AND o.latitude = '32.8240918'
        AND o.longitude = '-92.656449'));

COMMIT;
