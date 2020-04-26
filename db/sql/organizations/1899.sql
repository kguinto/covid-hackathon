
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
      'M Health Fairview Heart Clinic Saint Joseph Hospital ',
      '45 W 10th St
St Paul, MN 55102',
      'Saint Paul ',
      'MN',
      'Please drop off to Lab outreach for Bee ',
      'Yes',
      '44.9490988',
      '-93.1000226'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'M Health Fairview Heart Clinic Saint Joseph Hospital '
        AND o.latitude = '44.9490988'
        AND o.longitude = '-93.1000226'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'M Health Fairview Heart Clinic Saint Joseph Hospital '
        AND o.latitude = '44.9490988'
        AND o.longitude = '-93.1000226'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'M Health Fairview Heart Clinic Saint Joseph Hospital '
        AND o.latitude = '44.9490988'
        AND o.longitude = '-93.1000226'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'M Health Fairview Heart Clinic Saint Joseph Hospital '
        AND o.latitude = '44.9490988'
        AND o.longitude = '-93.1000226'));

COMMIT;
