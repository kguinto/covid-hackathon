
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
      'Greater Elgin Family Care Center',
      '373 Summit St
Elgin, IL 60120',
      'Elgin',
      'IL',
      'Front door',
      'Yes',
      '42.046053',
      '-88.2776705'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Elgin Family Care Center'
        AND o.latitude = '42.046053'
        AND o.longitude = '-88.2776705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Elgin Family Care Center'
        AND o.latitude = '42.046053'
        AND o.longitude = '-88.2776705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Elgin Family Care Center'
        AND o.latitude = '42.046053'
        AND o.longitude = '-88.2776705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Elgin Family Care Center'
        AND o.latitude = '42.046053'
        AND o.longitude = '-88.2776705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Elgin Family Care Center'
        AND o.latitude = '42.046053'
        AND o.longitude = '-88.2776705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Elgin Family Care Center'
        AND o.latitude = '42.046053'
        AND o.longitude = '-88.2776705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Elgin Family Care Center'
        AND o.latitude = '42.046053'
        AND o.longitude = '-88.2776705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater Elgin Family Care Center'
        AND o.latitude = '42.046053'
        AND o.longitude = '-88.2776705'));

COMMIT;
