
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
      'The Citadel Assisted Living',
      '520 S Higley Rd
Mesa, AZ 85206',
      'Mesa',
      'AZ',
      'Attn: David LaForest',
      'Yes',
      '33.4061065',
      '-111.7202439'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Citadel Assisted Living'
        AND o.latitude = '33.4061065'
        AND o.longitude = '-111.7202439'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Citadel Assisted Living'
        AND o.latitude = '33.4061065'
        AND o.longitude = '-111.7202439'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Citadel Assisted Living'
        AND o.latitude = '33.4061065'
        AND o.longitude = '-111.7202439'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Citadel Assisted Living'
        AND o.latitude = '33.4061065'
        AND o.longitude = '-111.7202439'));

COMMIT;
