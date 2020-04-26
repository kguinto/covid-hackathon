
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
      'Tampa Lakes Health and Rehabilitation',
      '750 Hayes Rd
Lutz, FL 33549',
      'Lutz',
      'FL',
      'Drop off outside of front entry door',
      'Yes',
      '28.0990001',
      '-82.4544358'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tampa Lakes Health and Rehabilitation'
        AND o.latitude = '28.0990001'
        AND o.longitude = '-82.4544358'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tampa Lakes Health and Rehabilitation'
        AND o.latitude = '28.0990001'
        AND o.longitude = '-82.4544358'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tampa Lakes Health and Rehabilitation'
        AND o.latitude = '28.0990001'
        AND o.longitude = '-82.4544358'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tampa Lakes Health and Rehabilitation'
        AND o.latitude = '28.0990001'
        AND o.longitude = '-82.4544358'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tampa Lakes Health and Rehabilitation'
        AND o.latitude = '28.0990001'
        AND o.longitude = '-82.4544358'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tampa Lakes Health and Rehabilitation'
        AND o.latitude = '28.0990001'
        AND o.longitude = '-82.4544358'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tampa Lakes Health and Rehabilitation'
        AND o.latitude = '28.0990001'
        AND o.longitude = '-82.4544358'));

COMMIT;
