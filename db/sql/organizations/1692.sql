
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
      'Thrive support and Advocacy ',
      '65 Boston Post Rd W #220
Marlborough, MA 01752',
      'Marlborough 01752',
      'MA',
      'Please call Melissa Kapulka 5086675070 I can be readily available for curbside at our office space if needed. ',
      'Yes',
      '42.3404954',
      '-71.5845424'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Thrive support and Advocacy '
        AND o.latitude = '42.3404954'
        AND o.longitude = '-71.5845424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Thrive support and Advocacy '
        AND o.latitude = '42.3404954'
        AND o.longitude = '-71.5845424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Thrive support and Advocacy '
        AND o.latitude = '42.3404954'
        AND o.longitude = '-71.5845424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Thrive support and Advocacy '
        AND o.latitude = '42.3404954'
        AND o.longitude = '-71.5845424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Thrive support and Advocacy '
        AND o.latitude = '42.3404954'
        AND o.longitude = '-71.5845424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Thrive support and Advocacy '
        AND o.latitude = '42.3404954'
        AND o.longitude = '-71.5845424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Thrive support and Advocacy '
        AND o.latitude = '42.3404954'
        AND o.longitude = '-71.5845424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Thrive support and Advocacy '
        AND o.latitude = '42.3404954'
        AND o.longitude = '-71.5845424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Thrive support and Advocacy '
        AND o.latitude = '42.3404954'
        AND o.longitude = '-71.5845424'));

COMMIT;
