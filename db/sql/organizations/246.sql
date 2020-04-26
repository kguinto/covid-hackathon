
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
      'Kindred Hospice ',
      '14725 SW 83rd Ave
Palmetto Bay, FL 33158',
      'Miami',
      'FL',
      '',
      'Yes',
      '25.6331926',
      '-80.3271859'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kindred Hospice '
        AND o.latitude = '25.6331926'
        AND o.longitude = '-80.3271859'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kindred Hospice '
        AND o.latitude = '25.6331926'
        AND o.longitude = '-80.3271859'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kindred Hospice '
        AND o.latitude = '25.6331926'
        AND o.longitude = '-80.3271859'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kindred Hospice '
        AND o.latitude = '25.6331926'
        AND o.longitude = '-80.3271859'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kindred Hospice '
        AND o.latitude = '25.6331926'
        AND o.longitude = '-80.3271859'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kindred Hospice '
        AND o.latitude = '25.6331926'
        AND o.longitude = '-80.3271859'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kindred Hospice '
        AND o.latitude = '25.6331926'
        AND o.longitude = '-80.3271859'));

COMMIT;
