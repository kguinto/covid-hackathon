
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
      'South Shore Pulmonary',
      '11 Vanderveer Ct
Rockville Centre, NY 11570',
      'Rockville Centre',
      'NY',
      'Curbside is fine, this is the home address of one of the doctors in the practice because curbside is not allowed at the office.',
      'Yes',
      '40.6795411',
      '-73.6318897'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Shore Pulmonary'
        AND o.latitude = '40.6795411'
        AND o.longitude = '-73.6318897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Shore Pulmonary'
        AND o.latitude = '40.6795411'
        AND o.longitude = '-73.6318897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Shore Pulmonary'
        AND o.latitude = '40.6795411'
        AND o.longitude = '-73.6318897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Shore Pulmonary'
        AND o.latitude = '40.6795411'
        AND o.longitude = '-73.6318897'));

COMMIT;
