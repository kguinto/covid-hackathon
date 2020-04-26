
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
      'Methodist University Hospital',
      '221 N Claybrook St
Memphis, TN 38104',
      'Memphis ',
      'TN',
      'This is the dock for the main Hospital - main entrance is 1265 Union Ave.  ',
      'Yes',
      '35.1450995',
      '-90.0170625'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist University Hospital'
        AND o.latitude = '35.1450995'
        AND o.longitude = '-90.0170625'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist University Hospital'
        AND o.latitude = '35.1450995'
        AND o.longitude = '-90.0170625'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist University Hospital'
        AND o.latitude = '35.1450995'
        AND o.longitude = '-90.0170625'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist University Hospital'
        AND o.latitude = '35.1450995'
        AND o.longitude = '-90.0170625'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist University Hospital'
        AND o.latitude = '35.1450995'
        AND o.longitude = '-90.0170625'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist University Hospital'
        AND o.latitude = '35.1450995'
        AND o.longitude = '-90.0170625'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist University Hospital'
        AND o.latitude = '35.1450995'
        AND o.longitude = '-90.0170625'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist University Hospital'
        AND o.latitude = '35.1450995'
        AND o.longitude = '-90.0170625'));

COMMIT;
