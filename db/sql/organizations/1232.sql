
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
      'Hospice Savannah',
      '1352 Eisenhower Dr
Savannah, GA 31406',
      'Savannah',
      'GA',
      'Please drop off at the front desk area',
      'No',
      '32.0050283',
      '-81.0922373'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Savannah'
        AND o.latitude = '32.0050283'
        AND o.longitude = '-81.0922373'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Savannah'
        AND o.latitude = '32.0050283'
        AND o.longitude = '-81.0922373'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Savannah'
        AND o.latitude = '32.0050283'
        AND o.longitude = '-81.0922373'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Savannah'
        AND o.latitude = '32.0050283'
        AND o.longitude = '-81.0922373'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Savannah'
        AND o.latitude = '32.0050283'
        AND o.longitude = '-81.0922373'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Savannah'
        AND o.latitude = '32.0050283'
        AND o.longitude = '-81.0922373'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Savannah'
        AND o.latitude = '32.0050283'
        AND o.longitude = '-81.0922373'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Savannah'
        AND o.latitude = '32.0050283'
        AND o.longitude = '-81.0922373'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Savannah'
        AND o.latitude = '32.0050283'
        AND o.longitude = '-81.0922373'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Savannah'
        AND o.latitude = '32.0050283'
        AND o.longitude = '-81.0922373'));

COMMIT;
