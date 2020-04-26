
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
      'New York Presbyterian/Columbia University Medical Center, Presbyterian Hospital Building',
      'Presbyterian Hospital Building
622 W 168th St
New York, NY 10032',
      'New York - Manhattan',
      'NY',
      'Please email masks@nyp.org or reach out to me',
      'unsure',
      '40.841311',
      '-73.94067'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Presbyterian/Columbia University Medical Center, Presbyterian Hospital Building'
        AND o.latitude = '40.841311'
        AND o.longitude = '-73.94067'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Presbyterian/Columbia University Medical Center, Presbyterian Hospital Building'
        AND o.latitude = '40.841311'
        AND o.longitude = '-73.94067'));

COMMIT;
