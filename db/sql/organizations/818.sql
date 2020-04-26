
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
      'Midwest Express Clinic',
      '875 Joliet St
Dyer, IN 46311',
      'Dyer',
      'IN',
      'Stay in your vehicle and call us at 219-440-7340, we will pick up curbside - thank you! ',
      'Yes',
      '41.4932345',
      '-87.5068746'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.4932345'
        AND o.longitude = '-87.5068746'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.4932345'
        AND o.longitude = '-87.5068746'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.4932345'
        AND o.longitude = '-87.5068746'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.4932345'
        AND o.longitude = '-87.5068746'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.4932345'
        AND o.longitude = '-87.5068746'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.4932345'
        AND o.longitude = '-87.5068746'));

COMMIT;
