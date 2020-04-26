
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
      'Spectrum Health',
      '2925 Walkent Ct NW #B
Grand Rapids, MI 49544',
      'Grand Rapids',
      'MI',
      'TBD',
      'Unknown',
      '43.019259',
      '-85.720399'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health'
        AND o.latitude = '43.019259'
        AND o.longitude = '-85.720399'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health'
        AND o.latitude = '43.019259'
        AND o.longitude = '-85.720399'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health'
        AND o.latitude = '43.019259'
        AND o.longitude = '-85.720399'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health'
        AND o.latitude = '43.019259'
        AND o.longitude = '-85.720399'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health'
        AND o.latitude = '43.019259'
        AND o.longitude = '-85.720399'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health'
        AND o.latitude = '43.019259'
        AND o.longitude = '-85.720399'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health'
        AND o.latitude = '43.019259'
        AND o.longitude = '-85.720399'));

COMMIT;
