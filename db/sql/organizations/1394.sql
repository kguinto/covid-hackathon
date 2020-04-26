
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
      'Children''s Hospital Los Angeles',
      '4650 Sunset Blvd
Los Angeles, CA 90027',
      'Los Angeles',
      'CA',
      'Email Covid19Donations@chla.usc.edu to get started. ',
      'No',
      '34.097817',
      '-118.2898677'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital Los Angeles'
        AND o.latitude = '34.097817'
        AND o.longitude = '-118.2898677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital Los Angeles'
        AND o.latitude = '34.097817'
        AND o.longitude = '-118.2898677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital Los Angeles'
        AND o.latitude = '34.097817'
        AND o.longitude = '-118.2898677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital Los Angeles'
        AND o.latitude = '34.097817'
        AND o.longitude = '-118.2898677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital Los Angeles'
        AND o.latitude = '34.097817'
        AND o.longitude = '-118.2898677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital Los Angeles'
        AND o.latitude = '34.097817'
        AND o.longitude = '-118.2898677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital Los Angeles'
        AND o.latitude = '34.097817'
        AND o.longitude = '-118.2898677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital Los Angeles'
        AND o.latitude = '34.097817'
        AND o.longitude = '-118.2898677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital Los Angeles'
        AND o.latitude = '34.097817'
        AND o.longitude = '-118.2898677'));

COMMIT;
