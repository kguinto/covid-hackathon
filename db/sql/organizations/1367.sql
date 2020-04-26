
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
      'Joyal Health Care Services Inc',
      '9905 Old St Augustine Rd STE 503
Jacksonville, FL 32257',
      'Jacksonville ',
      'FL',
      'Office',
      'Yes',
      '30.1969498',
      '-81.6125944'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Joyal Health Care Services Inc'
        AND o.latitude = '30.1969498'
        AND o.longitude = '-81.6125944'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Joyal Health Care Services Inc'
        AND o.latitude = '30.1969498'
        AND o.longitude = '-81.6125944'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Joyal Health Care Services Inc'
        AND o.latitude = '30.1969498'
        AND o.longitude = '-81.6125944'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Joyal Health Care Services Inc'
        AND o.latitude = '30.1969498'
        AND o.longitude = '-81.6125944'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Joyal Health Care Services Inc'
        AND o.latitude = '30.1969498'
        AND o.longitude = '-81.6125944'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Joyal Health Care Services Inc'
        AND o.latitude = '30.1969498'
        AND o.longitude = '-81.6125944'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Joyal Health Care Services Inc'
        AND o.latitude = '30.1969498'
        AND o.longitude = '-81.6125944'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Joyal Health Care Services Inc'
        AND o.latitude = '30.1969498'
        AND o.longitude = '-81.6125944'));

COMMIT;
