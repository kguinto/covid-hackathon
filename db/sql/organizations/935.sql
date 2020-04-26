
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
      'Nexus Specialty Hospital',
      '123 Vision Park Blvd
Shenandoah, TX 77384',
      'Shenandoah',
      'TX',
      'ATTN: ALVIN CASTRO',
      'Yes',
      '30.1888066',
      '-95.4603347'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nexus Specialty Hospital'
        AND o.latitude = '30.1888066'
        AND o.longitude = '-95.4603347'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nexus Specialty Hospital'
        AND o.latitude = '30.1888066'
        AND o.longitude = '-95.4603347'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nexus Specialty Hospital'
        AND o.latitude = '30.1888066'
        AND o.longitude = '-95.4603347'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nexus Specialty Hospital'
        AND o.latitude = '30.1888066'
        AND o.longitude = '-95.4603347'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nexus Specialty Hospital'
        AND o.latitude = '30.1888066'
        AND o.longitude = '-95.4603347'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nexus Specialty Hospital'
        AND o.latitude = '30.1888066'
        AND o.longitude = '-95.4603347'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nexus Specialty Hospital'
        AND o.latitude = '30.1888066'
        AND o.longitude = '-95.4603347'));

COMMIT;
