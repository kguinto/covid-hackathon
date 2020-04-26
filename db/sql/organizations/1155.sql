
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
      'Whitman-Walker Health',
      '1525 14th St NW
Washington, DC 20005',
      'Washington DC',
      'DC',
      'Please put to the ATTN of Jessica, 2nd Floor; Drop-offs at the front door or mailings are both welcome!',
      'No',
      '38.9104721',
      '-77.0315736'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Whitman-Walker Health'
        AND o.latitude = '38.9104721'
        AND o.longitude = '-77.0315736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Whitman-Walker Health'
        AND o.latitude = '38.9104721'
        AND o.longitude = '-77.0315736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Whitman-Walker Health'
        AND o.latitude = '38.9104721'
        AND o.longitude = '-77.0315736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Whitman-Walker Health'
        AND o.latitude = '38.9104721'
        AND o.longitude = '-77.0315736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Whitman-Walker Health'
        AND o.latitude = '38.9104721'
        AND o.longitude = '-77.0315736'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Whitman-Walker Health'
        AND o.latitude = '38.9104721'
        AND o.longitude = '-77.0315736'));

COMMIT;
