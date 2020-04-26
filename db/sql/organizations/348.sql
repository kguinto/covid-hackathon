
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
      'Immokalee Family Doctor''s Clinic',
      '555 North 15th St. A
Immokalee, FL 34142',
      'Immokalee',
      'FL',
      '',
      'Yes',
      '26.42734',
      '-81.434299'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Immokalee Family Doctor''s Clinic'
        AND o.latitude = '26.42734'
        AND o.longitude = '-81.434299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Immokalee Family Doctor''s Clinic'
        AND o.latitude = '26.42734'
        AND o.longitude = '-81.434299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Immokalee Family Doctor''s Clinic'
        AND o.latitude = '26.42734'
        AND o.longitude = '-81.434299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Immokalee Family Doctor''s Clinic'
        AND o.latitude = '26.42734'
        AND o.longitude = '-81.434299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Immokalee Family Doctor''s Clinic'
        AND o.latitude = '26.42734'
        AND o.longitude = '-81.434299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Immokalee Family Doctor''s Clinic'
        AND o.latitude = '26.42734'
        AND o.longitude = '-81.434299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Immokalee Family Doctor''s Clinic'
        AND o.latitude = '26.42734'
        AND o.longitude = '-81.434299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Immokalee Family Doctor''s Clinic'
        AND o.latitude = '26.42734'
        AND o.longitude = '-81.434299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Immokalee Family Doctor''s Clinic'
        AND o.latitude = '26.42734'
        AND o.longitude = '-81.434299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Immokalee Family Doctor''s Clinic'
        AND o.latitude = '26.42734'
        AND o.longitude = '-81.434299'));

COMMIT;
