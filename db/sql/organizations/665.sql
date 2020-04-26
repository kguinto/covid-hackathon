
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
      'Community Options, Inc.',
      '3710 Broadway, Suite 2
Allentown, PA, 18104',
      'Allentown',
      'PA',
      'Drop off at front office (if during normal business hours) or at front of building ATTN: Executive Director',
      'Yes',
      '40.5846618',
      '-75.5343572'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.5846618'
        AND o.longitude = '-75.5343572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.5846618'
        AND o.longitude = '-75.5343572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.5846618'
        AND o.longitude = '-75.5343572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.5846618'
        AND o.longitude = '-75.5343572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.5846618'
        AND o.longitude = '-75.5343572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.5846618'
        AND o.longitude = '-75.5343572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.5846618'
        AND o.longitude = '-75.5343572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.5846618'
        AND o.longitude = '-75.5343572'));

COMMIT;
