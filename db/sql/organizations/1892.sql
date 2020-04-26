
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
      'Coastal Bend House Calls',
      '4444 Corona Dr #130
Corpus Christi, TX 78411',
      'Corpus Christi',
      'TX',
      '',
      'Yes',
      '27.7144726',
      '-97.3920951'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coastal Bend House Calls'
        AND o.latitude = '27.7144726'
        AND o.longitude = '-97.3920951'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coastal Bend House Calls'
        AND o.latitude = '27.7144726'
        AND o.longitude = '-97.3920951'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coastal Bend House Calls'
        AND o.latitude = '27.7144726'
        AND o.longitude = '-97.3920951'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coastal Bend House Calls'
        AND o.latitude = '27.7144726'
        AND o.longitude = '-97.3920951'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coastal Bend House Calls'
        AND o.latitude = '27.7144726'
        AND o.longitude = '-97.3920951'));

COMMIT;
