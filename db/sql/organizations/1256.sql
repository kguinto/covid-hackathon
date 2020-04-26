
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
      'SUN Behavioral Health',
      '900 E Dublin Granville Rd
Columbus, OH 43229',
      'Columbus',
      'OH',
      'Jeremy Miller',
      'Yes',
      '40.088993',
      '-82.9935215'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'SUN Behavioral Health'
        AND o.latitude = '40.088993'
        AND o.longitude = '-82.9935215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'SUN Behavioral Health'
        AND o.latitude = '40.088993'
        AND o.longitude = '-82.9935215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'SUN Behavioral Health'
        AND o.latitude = '40.088993'
        AND o.longitude = '-82.9935215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'SUN Behavioral Health'
        AND o.latitude = '40.088993'
        AND o.longitude = '-82.9935215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'SUN Behavioral Health'
        AND o.latitude = '40.088993'
        AND o.longitude = '-82.9935215'));

COMMIT;
