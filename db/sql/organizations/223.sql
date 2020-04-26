
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
      'Advent Health Waterman ',
      '4000 Waterman Way
Tavares, FL 32778',
      'Tavares ',
      'FL',
      '',
      'Yes',
      '28.8244867',
      '-81.7094941'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advent Health Waterman '
        AND o.latitude = '28.8244867'
        AND o.longitude = '-81.7094941'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advent Health Waterman '
        AND o.latitude = '28.8244867'
        AND o.longitude = '-81.7094941'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advent Health Waterman '
        AND o.latitude = '28.8244867'
        AND o.longitude = '-81.7094941'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advent Health Waterman '
        AND o.latitude = '28.8244867'
        AND o.longitude = '-81.7094941'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advent Health Waterman '
        AND o.latitude = '28.8244867'
        AND o.longitude = '-81.7094941'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advent Health Waterman '
        AND o.latitude = '28.8244867'
        AND o.longitude = '-81.7094941'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advent Health Waterman '
        AND o.latitude = '28.8244867'
        AND o.longitude = '-81.7094941'));

COMMIT;
