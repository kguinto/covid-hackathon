
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
      'Community Options ',
      '456 West 167th Street 2E
New York, NY 10032',
      'New York - Manhattan',
      'NY',
      'Regina Taylor -Tuck',
      'Yes',
      '40.8387144',
      '-73.9369924'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.8387144'
        AND o.longitude = '-73.9369924'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.8387144'
        AND o.longitude = '-73.9369924'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.8387144'
        AND o.longitude = '-73.9369924'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.8387144'
        AND o.longitude = '-73.9369924'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.8387144'
        AND o.longitude = '-73.9369924'));

COMMIT;
