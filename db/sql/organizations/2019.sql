
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
      'Orange Coast MemorialCare Hospital',
      '18111 Brookhurst St
Fountain Valley, CA 92708',
      'Fountain Valley',
      'CA',
      'Please email me',
      'Yes',
      '33.7004664',
      '-117.9557452'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orange Coast MemorialCare Hospital'
        AND o.latitude = '33.7004664'
        AND o.longitude = '-117.9557452'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orange Coast MemorialCare Hospital'
        AND o.latitude = '33.7004664'
        AND o.longitude = '-117.9557452'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orange Coast MemorialCare Hospital'
        AND o.latitude = '33.7004664'
        AND o.longitude = '-117.9557452'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orange Coast MemorialCare Hospital'
        AND o.latitude = '33.7004664'
        AND o.longitude = '-117.9557452'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orange Coast MemorialCare Hospital'
        AND o.latitude = '33.7004664'
        AND o.longitude = '-117.9557452'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orange Coast MemorialCare Hospital'
        AND o.latitude = '33.7004664'
        AND o.longitude = '-117.9557452'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orange Coast MemorialCare Hospital'
        AND o.latitude = '33.7004664'
        AND o.longitude = '-117.9557452'));

COMMIT;
