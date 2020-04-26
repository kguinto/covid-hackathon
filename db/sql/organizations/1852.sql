
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
      'Long Island Community Hospital',
      '100 Hospital Rd
East Patchogue, NY 11772',
      'Patchogue',
      'NY',
      'Emergency Department, Main Lobby',
      'unsure',
      '40.779671',
      '-72.9789746'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community Hospital'
        AND o.latitude = '40.779671'
        AND o.longitude = '-72.9789746'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community Hospital'
        AND o.latitude = '40.779671'
        AND o.longitude = '-72.9789746'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community Hospital'
        AND o.latitude = '40.779671'
        AND o.longitude = '-72.9789746'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community Hospital'
        AND o.latitude = '40.779671'
        AND o.longitude = '-72.9789746'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community Hospital'
        AND o.latitude = '40.779671'
        AND o.longitude = '-72.9789746'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community Hospital'
        AND o.latitude = '40.779671'
        AND o.longitude = '-72.9789746'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community Hospital'
        AND o.latitude = '40.779671'
        AND o.longitude = '-72.9789746'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community Hospital'
        AND o.latitude = '40.779671'
        AND o.longitude = '-72.9789746'));

COMMIT;
