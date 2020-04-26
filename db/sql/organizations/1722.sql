
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
      'Terre Haute Regional Emergency Dept',
      '3901 S 7th St
Terre Haute, IN 47802',
      'Terre Haute',
      'IN',
      '',
      'Yes',
      '39.4195116',
      '-87.4089787'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terre Haute Regional Emergency Dept'
        AND o.latitude = '39.4195116'
        AND o.longitude = '-87.4089787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terre Haute Regional Emergency Dept'
        AND o.latitude = '39.4195116'
        AND o.longitude = '-87.4089787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terre Haute Regional Emergency Dept'
        AND o.latitude = '39.4195116'
        AND o.longitude = '-87.4089787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terre Haute Regional Emergency Dept'
        AND o.latitude = '39.4195116'
        AND o.longitude = '-87.4089787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terre Haute Regional Emergency Dept'
        AND o.latitude = '39.4195116'
        AND o.longitude = '-87.4089787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terre Haute Regional Emergency Dept'
        AND o.latitude = '39.4195116'
        AND o.longitude = '-87.4089787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terre Haute Regional Emergency Dept'
        AND o.latitude = '39.4195116'
        AND o.longitude = '-87.4089787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terre Haute Regional Emergency Dept'
        AND o.latitude = '39.4195116'
        AND o.longitude = '-87.4089787'));

COMMIT;
