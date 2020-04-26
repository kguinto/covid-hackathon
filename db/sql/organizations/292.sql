
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
      'Community Options Inc.',
      '4301 Bell Boulevard
Bayside, NY 11361',
      'New York - Queens ',
      'NY',
      'Maria Bowles, Executive Director',
      'Yes',
      '40.7613832',
      '-73.7695545'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '40.7613832'
        AND o.longitude = '-73.7695545'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '40.7613832'
        AND o.longitude = '-73.7695545'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '40.7613832'
        AND o.longitude = '-73.7695545'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '40.7613832'
        AND o.longitude = '-73.7695545'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '40.7613832'
        AND o.longitude = '-73.7695545'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '40.7613832'
        AND o.longitude = '-73.7695545'));

COMMIT;
