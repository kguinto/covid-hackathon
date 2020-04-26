
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
      'Waimea Smiles',
      '67-1125 Hawaii Belt Rd
Waimea, HI 96743',
      'Waimea ',
      'HI',
      'I can meet you in front of north Hawaii hospital and pick up from a distance - thanks you! - Dr. Spivak ',
      'Yes',
      '20.0232419',
      '-155.6653736'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waimea Smiles'
        AND o.latitude = '20.0232419'
        AND o.longitude = '-155.6653736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waimea Smiles'
        AND o.latitude = '20.0232419'
        AND o.longitude = '-155.6653736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waimea Smiles'
        AND o.latitude = '20.0232419'
        AND o.longitude = '-155.6653736'));

COMMIT;
