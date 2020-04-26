
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
      'Naples Community Hospital',
      '11190 Health Park Blvd
Naples, FL 34110',
      'Naples',
      'FL',
      '',
      'Yes',
      '26.2739901',
      '-81.7887262'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Naples Community Hospital'
        AND o.latitude = '26.2739901'
        AND o.longitude = '-81.7887262'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Naples Community Hospital'
        AND o.latitude = '26.2739901'
        AND o.longitude = '-81.7887262'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Naples Community Hospital'
        AND o.latitude = '26.2739901'
        AND o.longitude = '-81.7887262'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Naples Community Hospital'
        AND o.latitude = '26.2739901'
        AND o.longitude = '-81.7887262'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Naples Community Hospital'
        AND o.latitude = '26.2739901'
        AND o.longitude = '-81.7887262'));

COMMIT;
