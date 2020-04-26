
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
      'Anschutz Medical Campus (University of Colorado)',
      'Research Building 2
Anschutz Medical Campus
12700 E. 19th Ave
Aurora, Colorado 80045​',
      'Aurora',
      'CO',
      'https://www.cuanschutz.edu/coronavirus/research-guidance/reagents-and-supplies-needed',
      'I do not know',
      '39.7451472',
      '-104.8348497'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anschutz Medical Campus (University of Colorado)'
        AND o.latitude = '39.7451472'
        AND o.longitude = '-104.8348497'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anschutz Medical Campus (University of Colorado)'
        AND o.latitude = '39.7451472'
        AND o.longitude = '-104.8348497'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anschutz Medical Campus (University of Colorado)'
        AND o.latitude = '39.7451472'
        AND o.longitude = '-104.8348497'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anschutz Medical Campus (University of Colorado)'
        AND o.latitude = '39.7451472'
        AND o.longitude = '-104.8348497'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('See link',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anschutz Medical Campus (University of Colorado)'
        AND o.latitude = '39.7451472'
        AND o.longitude = '-104.8348497'));

COMMIT;
