
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
      'Saint John''s Health Center Foundation',
      '2221 Santa Monica Blvd.
Santa Monica, CA 90404',
      'Santa Monica',
      'CA',
      'Drive-Thru donation drop site at Saint John''s Foundation Office at 2221 Santa Monica Blvd located at the northwest corner of 23rd and Santa Monica Blvd.  Please enter on 23rd street.  The hours of operation are Monday – Friday from 10 a.m. to 4 p.m. Thanks for being our community partner in battling the COVID-19 virus. ',
      'Unused',
      '34.0307723',
      '-118.4779644'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint John''s Health Center Foundation'
        AND o.latitude = '34.0307723'
        AND o.longitude = '-118.4779644'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint John''s Health Center Foundation'
        AND o.latitude = '34.0307723'
        AND o.longitude = '-118.4779644'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint John''s Health Center Foundation'
        AND o.latitude = '34.0307723'
        AND o.longitude = '-118.4779644'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint John''s Health Center Foundation'
        AND o.latitude = '34.0307723'
        AND o.longitude = '-118.4779644'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint John''s Health Center Foundation'
        AND o.latitude = '34.0307723'
        AND o.longitude = '-118.4779644'));

COMMIT;
