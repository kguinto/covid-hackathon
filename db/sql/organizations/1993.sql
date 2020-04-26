
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
      'Home health nurse, Massachusetts RN',
      '501 Wine Rd
New Braintree, MA 01531',
      'New Braintree',
      'MA',
      'Please mail to 501 wine rd, New Braintree, MA 01531',
      'Open boxes if items inside are individually wrapped',
      '42.3203259',
      '-72.1431737'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home health nurse, Massachusetts RN'
        AND o.latitude = '42.3203259'
        AND o.longitude = '-72.1431737'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home health nurse, Massachusetts RN'
        AND o.latitude = '42.3203259'
        AND o.longitude = '-72.1431737'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home health nurse, Massachusetts RN'
        AND o.latitude = '42.3203259'
        AND o.longitude = '-72.1431737'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home health nurse, Massachusetts RN'
        AND o.latitude = '42.3203259'
        AND o.longitude = '-72.1431737'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home health nurse, Massachusetts RN'
        AND o.latitude = '42.3203259'
        AND o.longitude = '-72.1431737'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home health nurse, Massachusetts RN'
        AND o.latitude = '42.3203259'
        AND o.longitude = '-72.1431737'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home health nurse, Massachusetts RN'
        AND o.latitude = '42.3203259'
        AND o.longitude = '-72.1431737'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home health nurse, Massachusetts RN'
        AND o.latitude = '42.3203259'
        AND o.longitude = '-72.1431737'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home health nurse, Massachusetts RN'
        AND o.latitude = '42.3203259'
        AND o.longitude = '-72.1431737'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home health nurse, Massachusetts RN'
        AND o.latitude = '42.3203259'
        AND o.longitude = '-72.1431737'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Paper towels',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home health nurse, Massachusetts RN'
        AND o.latitude = '42.3203259'
        AND o.longitude = '-72.1431737'));

COMMIT;
