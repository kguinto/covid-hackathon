
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
      'Cape Abilities Inc',
      '895 Mary Dunn Rd
Hyannis, MA 02601',
      'Hyannis ',
      'MA',
      'Front door drop off',
      'Yes',
      '41.6825367',
      '-70.2824074'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cape Abilities Inc'
        AND o.latitude = '41.6825367'
        AND o.longitude = '-70.2824074'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cape Abilities Inc'
        AND o.latitude = '41.6825367'
        AND o.longitude = '-70.2824074'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cape Abilities Inc'
        AND o.latitude = '41.6825367'
        AND o.longitude = '-70.2824074'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cape Abilities Inc'
        AND o.latitude = '41.6825367'
        AND o.longitude = '-70.2824074'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cape Abilities Inc'
        AND o.latitude = '41.6825367'
        AND o.longitude = '-70.2824074'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cape Abilities Inc'
        AND o.latitude = '41.6825367'
        AND o.longitude = '-70.2824074'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cape Abilities Inc'
        AND o.latitude = '41.6825367'
        AND o.longitude = '-70.2824074'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cape Abilities Inc'
        AND o.latitude = '41.6825367'
        AND o.longitude = '-70.2824074'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cape Abilities Inc'
        AND o.latitude = '41.6825367'
        AND o.longitude = '-70.2824074'));

COMMIT;
