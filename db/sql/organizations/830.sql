
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
      'Garden Silver Town',
      '2830 Francis Ave.
Los Angeles, CA 90005',
      'Los Angeles',
      'CA',
      '2830 Francis Ave.',
      'Yes',
      '34.0565207',
      '-118.2874171'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden Silver Town'
        AND o.latitude = '34.0565207'
        AND o.longitude = '-118.2874171'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden Silver Town'
        AND o.latitude = '34.0565207'
        AND o.longitude = '-118.2874171'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden Silver Town'
        AND o.latitude = '34.0565207'
        AND o.longitude = '-118.2874171'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden Silver Town'
        AND o.latitude = '34.0565207'
        AND o.longitude = '-118.2874171'));

COMMIT;
